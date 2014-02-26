.class public Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyCommentDiscussActivity.java"


# static fields
.field public static final COMMENT_REQUEST_CODE:I = 0xa

.field public static final COMMENT_TYPE:I = 0x1

.field public static final DISCUSS_REQUEST_CODE:I = 0xb

.field public static final DISCUSS_TYPE:I = 0x2

.field public static final PRODUCT_EXTRA:Ljava/lang/String; = "product"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adjustParam:Lorg/json/JSONObject;

.field private functionId:Ljava/lang/String;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field mInstructionButton:Landroid/widget/Button;

.field mNewComment:Landroid/widget/Button;

.field mNewDiscuss:Landroid/widget/Button;

.field mTitle:Landroid/widget/TextView;

.field nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

.field private orderWaresList:Landroid/widget/ListView;

.field private params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 73
    const-string v0, "MyCommentDiscussActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private InitComponenet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const v0, 0x7f0c018f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->orderWaresList:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->orderWaresList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 108
    const v0, 0x7f030087

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42f0

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    const v1, 0x7f0704d0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->mInstructionButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static adjustOrder(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "myActivity"
    .parameter "intent"
    .parameter "type"
    .parameter "product"
    .parameter "adjustParam2"

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 388
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "adjustOrder"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 392
    new-instance v1, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 513
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static canCommentOrDiscuss(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 359
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCommentDiscussList()V
    .locals 8

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->orderWaresList:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->orderWaresList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->functionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->params:Lorg/json/JSONObject;

    const v1, 0x7f070297

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NewNextPageLoader;->showPageOne(Z)V

    .line 356
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 138
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 140
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "product"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Product;

    .line 141
    .local v5, productTemp:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v6

    .line 142
    .local v6, wareId:Ljava/lang/Long;
    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, orderId:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/NewNextPageLoader;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v2

    .line 147
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v1, 0x0

    .line 148
    .local v1, findTarget:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 171
    :goto_0
    if-nez v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getCommentDiscussList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #findTarget:Z
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v3           #orderId:Ljava/lang/String;
    .end local v5           #productTemp:Lcom/jingdong/common/entity/Product;
    .end local v6           #wareId:Ljava/lang/Long;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    return-void

    .line 148
    .restart local v1       #findTarget:Z
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v3       #orderId:Ljava/lang/String;
    .restart local v5       #productTemp:Lcom/jingdong/common/entity/Product;
    .restart local v6       #wareId:Ljava/lang/Long;
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Product;

    .line 154
    .local v4, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_2
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/NewNextPageLoader;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    .end local v1           #findTarget:Z
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v3           #orderId:Ljava/lang/String;
    .end local v4           #product:Lcom/jingdong/common/entity/Product;
    .end local v5           #productTemp:Lcom/jingdong/common/entity/Product;
    .end local v6           #wareId:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getCommentDiscussList()V

    goto :goto_1

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #findTarget:Z
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v3       #orderId:Ljava/lang/String;
    .restart local v4       #product:Lcom/jingdong/common/entity/Product;
    .restart local v5       #productTemp:Lcom/jingdong/common/entity/Product;
    .restart local v6       #wareId:Ljava/lang/Long;
    :pswitch_0
    :try_start_2
    const-string v7, "comment"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/entity/Product;->setHasComment(Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :pswitch_1
    const-string v7, "discuss"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/entity/Product;->setHasDiscuss(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 179
    .end local v1           #findTarget:Z
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v3           #orderId:Ljava/lang/String;
    .end local v4           #product:Lcom/jingdong/common/entity/Product;
    .end local v5           #productTemp:Lcom/jingdong/common/entity/Product;
    .end local v6           #wareId:Ljava/lang/Long;
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getCommentDiscussList()V

    goto :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f03009a

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->setContentView(I)V

    .line 81
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, mTitleView:Landroid/widget/TextView;
    const v1, 0x7f07023e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const-string v1, "orderWares"

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->functionId:Ljava/lang/String;

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->params:Lorg/json/JSONObject;

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->InitComponenet()V

    .line 87
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getCommentDiscussList()V

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 193
    return-void
.end method
