.class public Lcom/jingdong/app/mall/personel/MyMessageShow;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyMessageShow.java"


# static fields
.field private static final LOGIN_REQUEST_CODE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MyMessageShow"


# instance fields
.field answerBody:Landroid/widget/LinearLayout;

.field contentBoby:Landroid/widget/ScrollView;

.field private detail:Lcom/jingdong/common/entity/MessageDetail;

.field imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field intent:Landroid/content/Intent;

.field private isFromNF:Z

.field private isLoginFail:Z

.field listItem:Lcom/jingdong/common/entity/MessageListItem;

.field mAnswerBody:Landroid/widget/TextView;

.field mAnswerTime:Landroid/widget/TextView;

.field mOrderCreatTime:Landroid/widget/TextView;

.field mOrderNumber:Landroid/widget/TextView;

.field mQuestionBody:Landroid/widget/TextView;

.field mQuestionCreatTime:Landroid/widget/TextView;

.field mQuestionUser:Landroid/widget/TextView;

.field mTitleView:Landroid/widget/TextView;

.field mTxQuestion:Landroid/widget/TextView;

.field mTxViewBody:Landroid/widget/TextView;

.field msgType:I

.field productTextView:Landroid/widget/TextView;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isFromNF:Z

    .line 70
    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isLoginFail:Z

    .line 129
    new-instance v0, Lcom/jingdong/app/mall/personel/MyMessageShow$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->runnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getMessageDetail()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeReActivationUser()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->initTitle()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyMessageShow;Lcom/jingdong/common/entity/MessageDetail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->checkWhichToView()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MyMessageShow;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setLeftProductImage(Ljava/lang/String;)V

    return-void
.end method

.method private checkWhichToView()V
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeByConsulting()V

    .line 209
    :goto_0
    return-void

    .line 203
    :sswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeBySelf()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private getMessageDetail()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/MyMessageShow$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$5;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    invoke-static {p0, v0, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->getMessageDetail(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 456
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTitleView:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initViewContentTypeByConsulting()V
    .locals 5

    .prologue
    const v4, 0x7f0c03b4

    const/16 v3, 0x8

    .line 217
    const v1, 0x7f0c03ac

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->contentBoby:Landroid/widget/ScrollView;

    .line 220
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->contentBoby:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 222
    const v1, 0x7f0c03ae

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0c03af

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionCreatTime:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0c03b0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionBody:Landroid/widget/TextView;

    .line 228
    const v1, 0x7f0c03ad

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/personel/MyMessageShow$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$2;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v1, 0x7f0c03b2

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->answerBody:Landroid/widget/LinearLayout;

    .line 247
    iget v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 248
    const v1, 0x7f0c03b3

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerTime:Landroid/widget/TextView;

    .line 249
    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    .line 250
    const v1, 0x7f0c03a8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxViewBody:Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxViewBody:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxViewBody:Landroid/widget/TextView;

    const v2, 0x7f0702a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_0
    :goto_0
    const v1, 0x7f0c03ab

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->productTextView:Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->productTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyMessageShow$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$3;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    .line 256
    const/high16 v1, 0x4120

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    .line 257
    .local v0, padding:I
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionBody:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->answerBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initViewContentTypeBySelf()V
    .locals 3

    .prologue
    .line 288
    const v0, 0x7f0c03ae

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0c03a6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mOrderNumber:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0c03a7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mOrderCreatTime:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f0c03a8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxViewBody:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f0c03aa

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxQuestion:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f0c03ab

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->productTextView:Landroid/widget/TextView;

    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mOrderNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f07023b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mOrderCreatTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mTxViewBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->productTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyMessageShow$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$4;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method

.method private initViewContentTypeReActivationUser()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 345
    const v0, 0x7f0c03b5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const v0, 0x7f0c03ae

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v0, 0x7f0c03af

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionCreatTime:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionCreatTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const v0, 0x7f0c03b0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionBody:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mQuestionBody:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    const v0, 0x7f0c03b2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->answerBody:Landroid/widget/LinearLayout;

    .line 356
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->answerBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    const v0, 0x7f0c03b4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->mAnswerBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageListItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method private setLeftProductImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    const v0, 0x7f0c03b6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, p1, v2}, Lcom/jingdong/common/utils/NoImageUtils;->initImageView(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 460
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 483
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_0

    .line 485
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isLoginFail:Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isLoginFail:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sput v4, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    .line 83
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    const-string v3, "listItem"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/MessageListItem;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    .line 85
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    const-string v3, "isFromNF"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isFromNF:Z

    .line 89
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    if-nez v2, :cond_0

    .line 92
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, obj:Lorg/json/JSONObject;
    new-instance v2, Lcom/jingdong/common/entity/MessageListItem;

    new-instance v3, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v3, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/jingdong/common/entity/MessageListItem;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #obj:Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    .line 115
    iget v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->msgType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 116
    new-instance v2, Lcom/jingdong/common/entity/BaseMessage;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageListItem;->getMsgId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/BaseMessage;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Lcom/jingdong/common/database/table/PushMessageTable;->updateMessage(Lcom/jingdong/common/entity/BaseMessage;)V

    .line 117
    const v2, 0x7f0300a6

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->setContentView(I)V

    .line 118
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getMessageDetail()V

    .line 120
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->initTitle()V

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->runnable:Ljava/lang/Runnable;

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->finish()V

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isFromNF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 466
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 467
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->finish()V

    .line 468
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 187
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->isLoginFail:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 189
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyMessageShow;->finish()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow;->runnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;I)V

    .line 197
    :cond_1
    return-void
.end method
