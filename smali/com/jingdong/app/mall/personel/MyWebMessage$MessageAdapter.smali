.class Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyWebMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 281
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 43
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 302
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    if-nez p2, :cond_1

    new-instance v41, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v41, view:Landroid/view/View;
    :goto_0
    new-instance v34, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v4, 0x4280

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    const/high16 v5, 0x41b8

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 307
    .local v34, lp:Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 310
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 312
    .local v33, index:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v33

    .end local v33           #index:Ljava/lang/Integer;
    check-cast v33, Ljava/lang/Integer;

    .line 319
    .restart local v33       #index:Ljava/lang/Integer;
    :cond_0
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    move-object/from16 v42, v41

    .line 669
    .end local v33           #index:Ljava/lang/Integer;
    .end local v34           #lp:Landroid/widget/AbsListView$LayoutParams;
    .end local v41           #view:Landroid/view/View;
    .local v42, view:Ljava/lang/Object;
    :goto_2
    return-object v42

    .end local v42           #view:Ljava/lang/Object;
    :cond_1
    move-object/from16 v41, p2

    .line 304
    goto :goto_0

    .line 321
    .restart local v33       #index:Ljava/lang/Integer;
    .restart local v34       #lp:Landroid/widget/AbsListView$LayoutParams;
    .restart local v41       #view:Landroid/view/View;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    move/from16 v0, p1

    #setter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I
    invoke-static {v4, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$5(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V

    .line 322
    const v4, 0x7f020201

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 326
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    move/from16 v0, p1

    #setter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I
    invoke-static {v4, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$6(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V

    .line 327
    const v4, 0x7f020202

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 331
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    move/from16 v0, p1

    #setter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I
    invoke-static {v4, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$7(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V

    .line 332
    const v4, 0x7f0201fe

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 344
    .end local v33           #index:Ljava/lang/Integer;
    .end local v34           #lp:Landroid/widget/AbsListView$LayoutParams;
    .end local v41           #view:Landroid/view/View;
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v41

    .line 346
    .restart local v41       #view:Landroid/view/View;
    const v4, 0x7f0c0375

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 347
    .local v13, titleText:Landroid/widget/TextView;
    const v4, 0x7f0c0378

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 348
    .local v12, contentText:Landroid/widget/TextView;
    const v4, 0x7f0c0374

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 349
    .local v15, mMsgTime:Landroid/widget/TextView;
    const v4, 0x7f0c0387

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 351
    .local v14, mMsgDetail:Landroid/widget/TextView;
    const v4, 0x7f0c0377

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 353
    .local v6, moreLinesView:Landroid/widget/RadioButton;
    const v4, 0x7f0c0386

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    .line 354
    .local v30, detailLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f0c0382

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 356
    .local v9, otherLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f0c0379

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 357
    .local v24, askReplyLayout:Landroid/widget/LinearLayout;
    const v4, 0x7f0c037a

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 358
    .local v11, askLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f0c037e

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 359
    .local v8, replyLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f0c0385

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 360
    .local v31, dividerView:Landroid/view/View;
    const v4, 0x7f0c0384

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 362
    .local v36, productContentView:Landroid/widget/TextView;
    const v4, 0x7f0c037b

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 363
    .local v27, askUserView:Landroid/widget/TextView;
    const v4, 0x7f0c037c

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 364
    .local v26, askTimeView:Landroid/widget/TextView;
    const v4, 0x7f0c037d

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 366
    .local v10, askContentView:Landroid/widget/TextView;
    const v4, 0x7f0c0380

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 367
    .local v38, replyTimeView:Landroid/widget/TextView;
    const v4, 0x7f0c0381

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 369
    .local v37, replyContentView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    .line 372
    .local v7, messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    new-instance v5, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12, v7, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Landroid/widget/TextView;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/RadioButton;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 413
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 509
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 512
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    :goto_3
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isHasAction()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 525
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :goto_4
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    const/4 v5, 0x1

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    const/16 v17, 0x2

    aput-object v15, v16, v17

    const/16 v17, 0x3

    aput-object v12, v16, v17

    move-object/from16 v0, v16

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setFontFakeBold(Z[Landroid/widget/TextView;)V
    invoke-static {v4, v5, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$9(Lcom/jingdong/app/mall/personel/MyWebMessage;Z[Landroid/widget/TextView;)V

    .line 540
    :goto_5
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 542
    new-instance v4, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v15}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Landroid/widget/RadioButton;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    new-instance v16, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;

    move-object/from16 v17, p0

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v22}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v42, v41

    .line 669
    .restart local v42       #view:Ljava/lang/Object;
    goto/16 :goto_2

    .line 420
    .end local v42           #view:Ljava/lang/Object;
    :sswitch_0
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 421
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 423
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 424
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 426
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 428
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getPin()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getCreatedTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getAskReplyContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getAskReplyTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 436
    .local v25, askReplyLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    const v5, 0x7f0c0379

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v4, v11, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_3

    .line 447
    .end local v25           #askReplyLp:Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_1
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 450
    .local v34, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    const v5, 0x7f0c0378

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v4, v12, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    .line 457
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 458
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 459
    .local v28, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    new-instance v39, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getProductAdWard()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 461
    .local v39, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getProductName()Ljava/lang/String;

    move-result-object v23

    .line 463
    .local v23, adWard:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 464
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v40

    .line 468
    .local v40, start:I
    :goto_6
    invoke-virtual/range {v39 .. v39}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    .line 470
    .local v32, end:I
    const/16 v4, 0x21

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move/from16 v2, v40

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 471
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 466
    .end local v32           #end:I
    .end local v40           #start:I
    :cond_3
    const/16 v40, 0x0

    .restart local v40       #start:I
    goto :goto_6

    .line 483
    .end local v23           #adWard:Ljava/lang/String;
    .end local v28           #colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    .end local v34           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v39           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v40           #start:I
    :sswitch_2
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout$LayoutParams;

    .line 484
    .local v35, otherLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    const v5, 0x7f0c0378

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 486
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout$LayoutParams;

    .line 487
    .local v29, contentOtherLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    const v5, 0x7f0c0377

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 496
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v4, v12, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_3

    .line 528
    .end local v29           #contentOtherLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v35           #otherLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v4, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    const/16 v4, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 536
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    const/4 v5, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    const/16 v17, 0x2

    aput-object v15, v16, v17

    const/16 v17, 0x3

    aput-object v12, v16, v17

    move-object/from16 v0, v16

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setFontFakeBold(Z[Landroid/widget/TextView;)V
    invoke-static {v4, v5, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$9(Lcom/jingdong/app/mall/personel/MyWebMessage;Z[Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 319
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x14 -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x2

    return v0
.end method
