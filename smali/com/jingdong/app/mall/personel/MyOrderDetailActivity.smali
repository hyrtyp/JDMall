.class public Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyOrderDetailActivity.java"


# static fields
.field private static final FUNCTION:Ljava/lang/String; = "function"

.field private static final REQUEST_CODE_DO_POST:I = 0x1

.field public static final SURVEY_COMMENT:I = 0x3eb

.field public static mCancelTimestamp:J


# instance fields
.field private final ORDER_FINISHED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private adjustParam:Lorg/json/JSONObject;

.field blackColorSpan:Landroid/text/style/ForegroundColorSpan;

.field cancleOrder:Ljava/lang/Boolean;

.field flag_once:Z

.field private functionId:Ljava/lang/String;

.field greyColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private info1:Landroid/widget/LinearLayout;

.field private info2:Landroid/widget/LinearLayout;

.field private info3:Landroid/widget/LinearLayout;

.field private info4:Landroid/widget/LinearLayout;

.field private info5:Landroid/widget/LinearLayout;

.field private isOnlinePay:Ljava/lang/Boolean;

.field itemHeight:I

.field private jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field listViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mEntranceFunction:Ljava/lang/String;

.field private mOrderCancelButton:Landroid/widget/Button;

.field private mOrderHandlerButton:Landroid/widget/Button;

.field private mProduct:Lcom/jingdong/common/entity/Product;

.field private mProductListView:Landroid/widget/ListView;

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

.field private mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private mainContent:Landroid/widget/LinearLayout;

.field private orderId:Ljava/lang/String;

.field private orderStatus:Ljava/lang/String;

.field private params:Lorg/json/JSONObject;

.field postConfrimFlag:Ljava/lang/Boolean;

.field receiveConfrimFlag:Ljava/lang/Boolean;

.field private satisfactionCommentLayout:Landroid/widget/RelativeLayout;

.field private satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;

.field settelLeft:Landroid/widget/LinearLayout$LayoutParams;

.field settelRight:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x4120

    const/high16 v4, 0x3f80

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 84
    iput v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->itemHeight:I

    .line 85
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->flag_once:Z

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->postConfrimFlag:Ljava/lang/Boolean;

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->receiveConfrimFlag:Ljava/lang/Boolean;

    .line 91
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancleOrder:Ljava/lang/Boolean;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;

    .line 101
    const-string v0, "\u5b8c\u6210"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->ORDER_FINISHED:Ljava/lang/String;

    .line 108
    const-string v0, "MyOrderDetailActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->TAG:Ljava/lang/String;

    .line 539
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelLeft:Landroid/widget/LinearLayout$LayoutParams;

    .line 540
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelRight:Landroid/widget/LinearLayout$LayoutParams;

    .line 542
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelLeft:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 543
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelRight:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 544
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelLeft:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 545
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelRight:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1245
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->listViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancelOrder()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-void
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->showOrderDetails()V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderStatus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOnlinePay(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionCommentLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->isOnlinePay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOrderStatus()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setProductList()V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doOnlinePay()V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doPostPayConfirm()V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doConfrimTakeGoods()V

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->confrimGoods()V

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adjustParam:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adjustParam:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mainContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private cancelOrder()V
    .locals 6

    .prologue
    .line 1020
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1021
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 1022
    const-string v4, "cancleOrder"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1023
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1025
    .local v3, param:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "orderId"

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1031
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0702e2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1034
    new-instance v4, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1100
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1101
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1103
    return-void

    .line 1026
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    .line 1028
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private changeSatisfactionState()V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionCommentLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionCommentLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1268
    :cond_0
    const v0, 0x7f07053a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1270
    return-void
.end method

.method private confrimGoods()V
    .locals 4

    .prologue
    .line 1156
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1157
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "confirm"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1158
    const-string v2, "orderId"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1160
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0702aa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1162
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$13;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1241
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1242
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1243
    return-void
.end method

.method private doConfrimTakeGoods()V
    .locals 3

    .prologue
    .line 920
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 937
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    const v1, 0x7f0701a9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 938
    const v1, 0x7f0702ac

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 939
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 940
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 941
    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 942
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$11;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 950
    return-void
.end method

.method private doOnlinePay()V
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/pay/PayUtils;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method private doPostPayConfirm()V
    .locals 3

    .prologue
    .line 883
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    .local v0, i:Landroid/content/Intent;
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v1, "post_order_confrim_flag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 887
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 888
    return-void
.end method

.method private generatorSettleItem(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "layoutParams"
    .parameter "lable"
    .parameter "gravity"

    .prologue
    .line 557
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 558
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 559
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 562
    const/4 v3, 0x3

    if-ne p3, v3, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    :goto_0
    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 569
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 570
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 572
    .local v0, len:F
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 573
    float-to-int v3, v0

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    :cond_0
    return-object v2

    .line 565
    .end local v0           #len:F
    .end local v1           #paint:Landroid/text/TextPaint;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .locals 5
    .parameter "it"

    .prologue
    .line 156
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    .line 158
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pin"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, pin:Ljava/lang/String;
    const-string v2, "product"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProduct:Lcom/jingdong/common/entity/Product;

    .line 160
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProduct:Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProduct:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .end local v1           #pin:Ljava/lang/String;
    :goto_1
    return-void

    .line 163
    .restart local v1       #pin:Ljava/lang/String;
    :cond_0
    const-string v2, "orderId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #pin:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getOrderInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 582
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-ge v3, v6, :cond_0

    .line 814
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 799
    .local v2, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 800
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 804
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    const-string v4, "isPublish"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 811
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 812
    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 813
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private initComponent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 175
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, mTitleView:Landroid/widget/TextView;
    const v1, 0x7f0702e9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 178
    const v1, 0x7f0c041b

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mainContent:Landroid/widget/LinearLayout;

    .line 179
    const v1, 0x7f0c041e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info1:Landroid/widget/LinearLayout;

    .line 180
    const v1, 0x7f0c0424

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info2:Landroid/widget/LinearLayout;

    .line 181
    const v1, 0x7f0c0426

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;

    .line 182
    const v1, 0x7f0c0427

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;

    .line 183
    const v1, 0x7f0c0428

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;

    .line 184
    const v1, 0x7f0c0420

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionCommentLayout:Landroid/widget/RelativeLayout;

    .line 186
    const v1, 0x7f0c044d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;

    .line 188
    const v1, 0x7f0c071c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;

    .line 189
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;

    const v2, 0x7f0702c2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 190
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method private initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "settleContent"
    .parameter "lable"
    .parameter "operator"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 515
    if-nez p2, :cond_0

    .line 516
    const-string p2, ""

    .line 519
    :cond_0
    if-nez p3, :cond_1

    .line 520
    const-string p3, ""

    .line 523
    :cond_1
    if-nez p4, :cond_2

    .line 524
    const-string p4, ""

    .line 527
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 530
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 532
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelLeft:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x3

    invoke-direct {p0, v1, p2, v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->generatorSettleItem(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->settelRight:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f07027e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->generatorSettleItem(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    return-void
.end method

.method private isOnlinePay()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->isOnlinePay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->isOnlinePay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private setOnlinePay(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isOnlinePay"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->isOnlinePay:Ljava/lang/Boolean;

    .line 1017
    return-void
.end method

.method private setOrderDetailInfo()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method private setOrderStatus()V
    .locals 5

    .prologue
    .line 840
    const v3, 0x7f0c044a

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 841
    .local v2, orderStatusTextView:Landroid/widget/TextView;
    const v3, 0x7f0c044c

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 842
    .local v0, orderIdTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v4, "orderStatus"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, orderStatus:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;

    new-instance v4, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    return-void
.end method

.method private setProductList()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 243
    const v0, 0x7f0c041f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    .line 245
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 247
    .local v7, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductlist:Ljava/util/ArrayList;

    const v4, 0x7f0300b9

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "imageUrl"

    aput-object v1, v5, v2

    new-array v6, v6, [I

    const v1, 0x7f0c00b1

    aput v1, v6, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 340
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->listViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;

    invoke-direct {v0, p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method private showOrderDetails()V
    .locals 2

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOrderDetailInfo()V

    .line 818
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$7;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 826
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductlist:Ljava/util/ArrayList;

    .line 828
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$8;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 892
    sparse-switch p1, :sswitch_data_0

    .line 916
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 917
    return-void

    .line 894
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 895
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getOrderInfo()V

    goto :goto_0

    .line 899
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getOrderInfo()V

    goto :goto_0

    .line 909
    :sswitch_2
    if-ne p2, v0, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->changeSatisfactionState()V

    goto :goto_0

    .line 892
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x3eb -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v1, 0x7f0300ae

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, it:Landroid/content/Intent;
    const-string v1, "newOrderInfo"

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->functionId:Ljava/lang/String;

    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adjustParam:Lorg/json/JSONObject;

    .line 120
    const-string v1, "function"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mEntranceFunction:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->initComponent(Landroid/content/Intent;)V

    .line 123
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getOrderInfo()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 139
    return-void
.end method
