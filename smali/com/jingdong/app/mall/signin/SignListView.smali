.class public Lcom/jingdong/app/mall/signin/SignListView;
.super Landroid/widget/LinearLayout;
.source "SignListView.java"


# static fields
.field public static final ANIM_REFRESH:I = 0x0

.field public static final ANIM_TIME:I = 0xa

.field public static final LIST_REFRESH:I = 0x1

.field public static final ORDER_REFRESH:I = 0x2


# instance fields
.field private adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;

.field public handler:Landroid/os/Handler;

.field private listInfo:Lcom/jingdong/common/entity/SigninList;

.field private mContext:Landroid/content/Context;

.field private ruleListener:Landroid/view/View$OnClickListener;

.field private signinIcon:Landroid/widget/ImageButton;

.field private signinJingDou:Landroid/widget/Button;

.field private signinLeiJi:Landroid/widget/Button;

.field private signinLianXu:Landroid/widget/Button;

.field private signinList:Landroid/widget/ListView;

.field private signinRule:Landroid/widget/ImageButton;

.field private signinTv1:Landroid/widget/TextView;

.field private signinTv2:Landroid/widget/TextView;

.field private topLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/jingdong/app/mall/signin/SignListView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignListView$1;-><init>(Lcom/jingdong/app/mall/signin/SignListView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/jingdong/app/mall/signin/SignListView$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignListView$2;-><init>(Lcom/jingdong/app/mall/signin/SignListView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->ruleListener:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    .line 197
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignListView;->init()V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/jingdong/app/mall/signin/SignListView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignListView$1;-><init>(Lcom/jingdong/app/mall/signin/SignListView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/jingdong/app/mall/signin/SignListView$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/signin/SignListView$2;-><init>(Lcom/jingdong/app/mall/signin/SignListView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->ruleListener:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Lcom/jingdong/app/mall/signin/SignListView;->init()V

    .line 205
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/signin/SignListView;Lcom/jingdong/common/entity/SigninList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/app/mall/signin/SignRecordAdapter;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinRule:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    const v2, 0x7f03011e

    invoke-static {v1, v2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0707

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->topLayout:Landroid/widget/RelativeLayout;

    .line 217
    const v1, 0x7f0c070b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0c070c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f0c070f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinList:Landroid/widget/ListView;

    .line 220
    const v1, 0x7f0c0706

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinIcon:Landroid/widget/ImageButton;

    .line 221
    const v1, 0x7f0c070e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinRule:Landroid/widget/ImageButton;

    .line 222
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinRule:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView;->ruleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v1, 0x7f0c0708

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;

    .line 225
    const v1, 0x7f0c0709

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;

    .line 226
    const v1, 0x7f0c070a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v1, Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jingdong/app/mall/signin/SignRecordAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    .line 233
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView;->adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    invoke-virtual {p0}, Lcom/jingdong/app/mall/signin/SignListView;->showUserData()V

    .line 236
    return-void
.end method


# virtual methods
.method public postHttp()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 255
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "qdGetStats"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 262
    new-instance v1, Lcom/jingdong/app/mall/signin/SignListView$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignListView$3;-><init>(Lcom/jingdong/app/mall/signin/SignListView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 305
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/jingdong/app/mall/signin/SignActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 306
    return-void
.end method

.method public showUserData()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 240
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
