.class public Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CheckMyOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field cancleOrder:Ljava/lang/Boolean;

.field imageViewLess:Landroid/widget/ImageView;

.field private jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field mAllTraceInfo:Landroid/widget/TextView;

.field mOrderIdNum:Landroid/widget/TextView;

.field mOrderStatus:Landroid/widget/TextView;

.field mOrderTime:Landroid/widget/TextView;

.field private mOrderTransportPerson:Landroid/widget/TextView;

.field private mOrderTransportStyle:Landroid/widget/TextView;

.field private mProduct:Lcom/jingdong/common/entity/Product;

.field mProductlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field mTitleRightButton:Landroid/widget/Button;

.field mTotalPrice:Landroid/widget/TextView;

.field mTraceView:Landroid/view/ViewGroup;

.field orderId:Ljava/lang/String;

.field orderInfoLayout:Landroid/view/View;

.field orderProductGalleryLayout:Landroid/view/View;

.field private params:Lorg/json/JSONObject;

.field positionLine:Landroid/view/View;

.field postConfrimFlag:Ljava/lang/Boolean;

.field receiveConfrimFlag:Ljava/lang/Boolean;

.field traceListOther:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 52
    const-class v0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->TAG:Ljava/lang/String;

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->postConfrimFlag:Ljava/lang/Boolean;

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->receiveConfrimFlag:Ljava/lang/Boolean;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->cancleOrder:Ljava/lang/Boolean;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportStyle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportPerson:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setTraceViewItem(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->queryShowGis(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setTraceInfo()V

    return-void
.end method

.method private getTraceInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 348
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v1, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V

    .line 342
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 343
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "newOrderMessage"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 346
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private initComponent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 101
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, mTitleView:Landroid/widget/TextView;
    const v2, 0x7f07045f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 104
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTitleRightButton:Landroid/widget/Button;

    .line 106
    const v2, 0x7f0c040b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportStyle:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0c040d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportPerson:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f0c040f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderIdNum:Landroid/widget/TextView;

    .line 109
    const v2, 0x7f0c0417

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTotalPrice:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0c0418

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTime:Landroid/widget/TextView;

    .line 111
    new-instance v1, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;)V

    .line 112
    .local v1, myClickListener:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;
    const v2, 0x7f0c0413

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    .line 113
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderIdNum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v2, 0x7f0c0415

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderInfoLayout:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderInfoLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v2, 0x7f0c041a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderProductGalleryLayout:Landroid/view/View;

    .line 118
    return-void
.end method

.method private queryShowGis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ukey"
    .parameter "orderId"

    .prologue
    .line 245
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 246
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "showGis"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 281
    return-void
.end method

.method private setTraceInfo()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->post(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method private setTraceViewItem(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "v"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    const v3, 0x7f0c039f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, txCreateTime:Landroid/widget/TextView;
    const v3, 0x7f0c03a0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 162
    .local v2, txMessage:Landroid/widget/TextView;
    const-string v3, "crateTime"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, tmp:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string v3, "message"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, it:Landroid/content/Intent;
    const-string v2, "product"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mProduct:Lcom/jingdong/common/entity/Product;

    .line 81
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mProduct:Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mProduct:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderId:Ljava/lang/String;

    .line 87
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    const v2, 0x7f0300ad

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setContentView(I)V

    .line 95
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->initComponent(Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getTraceInfo()V

    .line 97
    return-void

    .line 84
    :cond_0
    const-string v2, "orderId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderId:Ljava/lang/String;

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->postConfrimFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "post_order_confrim_flag"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getBooleanFromPreference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTitleRightButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    :cond_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 355
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method
