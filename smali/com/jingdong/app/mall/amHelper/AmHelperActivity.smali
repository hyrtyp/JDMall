.class public Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "AmHelperActivity.java"


# instance fields
.field public final DINNER:I

.field public final HOME:I

.field public final MEETING:I

.field private TAG:Ljava/lang/String;

.field public final TYPE_DINNER:Ljava/lang/String;

.field public final TYPE_HOME:Ljava/lang/String;

.field public final TYPE_MEETING:Ljava/lang/String;

.field private amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

.field private am_enter:Landroid/widget/ImageView;

.field private content:Landroid/widget/ImageView;

.field private contentTextView:Landroid/widget/TextView;

.field private currentUrl:Ljava/lang/String;

.field private isCanClickButton:Z

.field private isFirst:Z

.field private isLoader:Z

.field private radioGroup:Landroid/widget/RadioGroup;

.field private refreshBtn:Landroid/widget/Button;

.field private rockEnter:Landroid/widget/RelativeLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private textView:Landroid/widget/TextView;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 47
    const-class v0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isFirst:Z

    .line 59
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z

    .line 227
    const-string v0, "home"

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->TYPE_HOME:Ljava/lang/String;

    .line 228
    const-string v0, "meeting"

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->TYPE_MEETING:Ljava/lang/String;

    .line 229
    const-string v0, "dinner"

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->TYPE_DINNER:Ljava/lang/String;

    .line 230
    const v0, 0xffee00

    iput v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->HOME:I

    .line 231
    const v0, 0xffee01

    iput v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->MEETING:I

    .line 232
    const v0, 0xffee02

    iput v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->DINNER:I

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->avoidMoreTimeClicked()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->contentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->am_enter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->refreshBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->content:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->createComponent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isLoader:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private avoidMoreTimeClicked()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z

    .line 162
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$3;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    .line 168
    const/16 v1, 0xbb8

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->post(Ljava/lang/Runnable;I)V

    .line 169
    return-void
.end method

.method private createComponent(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string p1, "home"

    .line 239
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 240
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "getAnnualInfo"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 241
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v1, "pageType"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v2, "tk"

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 245
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 246
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 339
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 340
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method private findView()V
    .locals 9

    .prologue
    .line 76
    const v5, 0x7f0c0065

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 77
    .local v3, header:Landroid/widget/RelativeLayout;
    const v5, 0x7f0c006c

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 79
    .local v1, bottom:Landroid/widget/RelativeLayout;
    :try_start_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const v6, 0x7f02009c

    invoke-static {p0, v6}, Lcom/jingdong/common/utils/JDImageUtils;->getBitmapWithJpg16(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    :try_start_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020095

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/jingdong/app/mall/search/ImageTools;->reduce(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_1
    const v5, 0x7f0c006e

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->content:Landroid/widget/ImageView;

    .line 93
    const v5, 0x7f0c0069

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->rockEnter:Landroid/widget/RelativeLayout;

    .line 94
    const v5, 0x7f0c006a

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->am_enter:Landroid/widget/ImageView;

    .line 95
    const v5, 0x7f0c0068

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, back:Landroid/widget/ImageView;
    const v5, 0x7f0c0066

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->textView:Landroid/widget/TextView;

    .line 97
    const v5, 0x7f0c006f

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->contentTextView:Landroid/widget/TextView;

    .line 98
    const v5, 0x7f0c0067

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 99
    const v5, 0x7f0c006d

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->scrollView:Landroid/widget/ScrollView;

    .line 100
    const v5, 0x7f0c0070

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->refreshBtn:Landroid/widget/Button;

    .line 101
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 102
    .local v4, params:Landroid/widget/RadioGroup$LayoutParams;
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    const v6, 0xffee00

    const-string v7, "\u5e74\u4f1a\u9996\u9875"

    const v8, 0x7f02009f

    invoke-direct {p0, v6, v7, v8}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getRadioButton(ILjava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    const v6, 0xffee01

    const-string v7, "\u4f1a\u8bae\u6d41\u7a0b"

    invoke-direct {p0, v6, v7}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getRadioButton(ILjava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    const v6, 0xffee02

    const-string v7, "\u665a\u5bb4\u6d41\u7a0b"

    invoke-direct {p0, v6, v7}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getRadioButton(ILjava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v6, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$1;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 127
    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    .line 155
    .local v2, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->rockEnter:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v5, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->refreshBtn:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void

    .line 87
    .end local v0           #back:Landroid/widget/ImageView;
    .end local v2           #clickListener:Landroid/view/View$OnClickListener;
    .end local v4           #params:Landroid/widget/RadioGroup$LayoutParams;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 80
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method private getRadioButton(ILjava/lang/String;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getRadioButton(ILjava/lang/String;I)Landroid/widget/RadioButton;

    move-result-object v0

    return-object v0
.end method

.method private getRadioButton(ILjava/lang/String;I)Landroid/widget/RadioButton;
    .locals 5
    .parameter "id"
    .parameter "name"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v1, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, radioButton:Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;
    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setId(I)V

    .line 178
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setGravity(I)V

    .line 179
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 180
    .local v0, padding:I
    invoke-virtual {v1, v0, v4, v0, v4}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setPadding(IIII)V

    .line 181
    if-lez p3, :cond_0

    .line 182
    invoke-virtual {v1, v4}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setTextColor(I)V

    .line 183
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setButton(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    const v2, 0x7f020458

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setButtonDrawable(I)V

    .line 186
    invoke-virtual {v1, p2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setBackgroundResource(I)V

    .line 188
    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;

    invoke-direct {v2, p0, p3}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;I)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    return-object v1
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b22\u8fce\u60a8, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u60a8\u7684\u5165\u573a\u7f16\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method private startAmAnim()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->rockEnter:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->rockEnter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    invoke-direct {v0}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    const/4 v1, -0x1

    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->startAnimation(Lcom/jingdong/app/mall/utils/MyActivity;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;)V

    goto :goto_0
.end method

.method private stopAmAnim()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->amAnimationUtil:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->stopAnimation()V

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findView()V

    .line 66
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 396
    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setContentView(I)V

    .line 397
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 350
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isFirst:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0xffee00

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isFirst:Z

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->startAmAnim()V

    .line 356
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 389
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 390
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->stopAmAnim()V

    .line 391
    return-void
.end method

.method public setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5
    .parameter "icon"
    .parameter "url"

    .prologue
    const/16 v4, 0x1388

    .line 400
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->refreshBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 407
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 410
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$7;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 454
    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 455
    return-void
.end method
