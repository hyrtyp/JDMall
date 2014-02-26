.class public Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;
.super Ljava/lang/Object;
.source "JDMiaoShaProduct.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JDMiaoSha"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private bottomLayout:Landroid/widget/LinearLayout;

.field private btnMiaoSha:Landroid/widget/ImageView;

.field private context:Lcom/jingdong/app/mall/utils/MyActivity;

.field private countdown:Landroid/widget/LinearLayout;

.field private isChecked:Z

.field private item:Landroid/view/View;

.field private jdPrice:Landroid/widget/TextView;

.field private miaoShaPrice:Landroid/widget/TextView;

.field private millis:J

.field private name:Landroid/widget/TextView;

.field private productId:J

.field private rate:Landroid/widget/TextView;

.field private request:I

.field private sale:Landroid/view/View;

.field private sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private tag:Landroid/widget/ImageView;

.field private timeMillis:J


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->initView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 64
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->initView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->timeMillis:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setProductStyle(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)I
    .locals 1
    .parameter

    .prologue
    .line 299
    iget v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I

    return v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->isChecked:Z

    return v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/app/AlarmManager;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->alarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->addButton()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->getFinishTextView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->millis:J

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->millis:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method private addButton()V
    .locals 5

    .prologue
    const/high16 v3, 0x4000

    .line 412
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x420c

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    .local v0, params2:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x4020

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 414
    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    return-void
.end method

.method private addSale()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x4248

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v0, params1:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 408
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->sale:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    return-void
.end method

.method private getFinishTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->getFinishTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getFinishTextView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "content"

    .prologue
    .line 390
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, text:Landroid/widget/TextView;
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 392
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const v1, 0x7f070409

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :goto_0
    return-object v0

    .line 396
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSwitch(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 306
    invoke-static {}, Lcom/jingdong/common/database/table/MS_AlarmTable;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    .local v0, tb_list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    const v0, 0x7f03001c

    invoke-static {v0, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->item:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->alarmManager:Landroid/app/AlarmManager;

    .line 73
    const v0, 0x7f0c00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0c00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->name:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c00cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->jdPrice:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0c00cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f03001d

    invoke-static {v0, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->sale:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->sale:Landroid/view/View;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->miaoShaPrice:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->sale:Landroid/view/View;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->rate:Landroid/widget/TextView;

    .line 83
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    .line 84
    return-void
.end method

.method private setButtomStyle(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(ILandroid/view/View$OnClickListener;)V

    .line 364
    return-void
.end method

.method private setButtomStyle(ILandroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "what"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 380
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :goto_0
    if-eqz p2, :cond_0

    .line 384
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_0
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42de

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    const/high16 v3, 0x4248

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setProductStyle(I)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    :goto_0
    return-void

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->tag:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stop(J)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;

    .line 429
    .local v0, clock:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v0           #clock:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
    :cond_0
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public bindData(Lcom/jingdong/common/entity/Product;)V
    .locals 1
    .parameter "product"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bindData(Lcom/jingdong/common/entity/Product;Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public bindData(Lcom/jingdong/common/entity/Product;Landroid/view/View$OnClickListener;)V
    .locals 23
    .parameter "product"
    .parameter "listener"

    .prologue
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->productId:J

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->productId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->timeMillis:J

    move-wide/from16 v21, v0

    sub-long v16, v19, v21

    .line 96
    .local v16, t:J
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getStartTime()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v14, v19, v16

    .line 97
    .local v14, startRemainTime:J
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getEndTime()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v10, v19, v16

    .line 98
    .local v10, endRemainTime:J
    const-wide/16 v6, 0x0

    .line 99
    .local v6, countdownTime:J
    const/16 v18, 0x0

    .line 100
    .local v18, what:I
    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_3

    .line 101
    const/16 v18, 0x1

    .line 108
    :cond_0
    :goto_0
    new-instance v5, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;-><init>(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;Lcom/jingdong/common/entity/Product;)V

    .line 144
    .local v5, countDownListener:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$CountDownListener;
    new-instance v8, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;-><init>(Landroid/content/Context;)V

    .line 145
    .local v8, digitalClock:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->productId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setTag(Ljava/lang/Object;)V

    .line 146
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setScaleTextSize(Z)V

    .line 148
    sget-object v19, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    const/high16 v19, 0x4190

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setTextSize(F)V

    .line 150
    invoke-virtual {v8, v5}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setCountDownListener(Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$CountDownListener;)V

    .line 152
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setProductStyle(I)V

    .line 153
    packed-switch v18, :pswitch_data_0

    .line 235
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 236
    const-wide/16 v19, 0x0

    cmp-long v19, v6, v19

    if-lez v19, :cond_6

    .line 237
    move/from16 v0, v18

    invoke-virtual {v8, v6, v7, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setEndTime(JI)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    :goto_2
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, name_Adword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->name:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, -0x24dadb

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->highlight(Ljava/lang/String;III)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v12           #name_Adword:Ljava/lang/String;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->addSale()V

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->addButton()V

    .line 260
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\uffe5"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getMiaoShaPrice()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, price:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->miaoShaPrice:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, -0x24dadb

    const/16 v21, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->highlight(Ljava/lang/String;III)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->jdPrice:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u539f\u4ef7:"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\uffe5"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->strikethroughToString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->rate:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getRate()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    if-eqz p2, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->item:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_2
    return-void

    .line 102
    .end local v5           #countDownListener:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$CountDownListener;
    .end local v8           #digitalClock:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
    .end local v13           #price:Ljava/lang/String;
    :cond_3
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_4

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-gtz v19, :cond_4

    .line 103
    const/16 v18, 0x2

    .line 104
    goto/16 :goto_0

    :cond_4
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-gtz v19, :cond_0

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-gtz v19, :cond_0

    .line 105
    const/16 v18, 0x3

    goto/16 :goto_0

    .line 155
    .restart local v5       #countDownListener:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$CountDownListener;
    .restart local v8       #digitalClock:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
    :pswitch_0
    move-wide v6, v14

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v19, v0

    const v20, 0x7f070408

    invoke-virtual/range {v19 .. v20}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setSuffixText(Ljava/lang/String;)V

    .line 157
    new-instance v19, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;-><init>(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;Lcom/jingdong/common/entity/Product;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(ILandroid/view/View$OnClickListener;)V

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->getSwitch(J)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->isChecked:Z

    if-eqz v19, :cond_5

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setOn()V

    goto/16 :goto_1

    .line 219
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setOff()V

    goto/16 :goto_1

    .line 224
    :pswitch_1
    move-wide v6, v10

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(ILandroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v19, v0

    const v20, 0x7f070407

    invoke-virtual/range {v19 .. v20}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setSuffixText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :pswitch_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setTickerStopped(Z)V

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(I)V

    goto/16 :goto_1

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->getFinishTextView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 246
    :catch_0
    move-exception v9

    .line 247
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, _name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->name:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMiaoShaProductButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProductItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->item:Landroid/view/View;

    return-object v0
.end method

.method public highlight(Ljava/lang/String;III)Landroid/text/SpannableStringBuilder;
    .locals 3
    .parameter "text"
    .parameter "color"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 283
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 284
    .local v1, spannable:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 285
    .local v0, span:Landroid/text/style/ForegroundColorSpan;
    const/16 v2, 0x21

    invoke-virtual {v1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 286
    return-object v1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 420
    iget-wide v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->productId:J

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->stop(J)V

    .line 421
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 423
    :cond_0
    return-void
.end method

.method public setMillis(J)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->millis:J

    .line 51
    return-void
.end method

.method public setOff()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->isChecked:Z

    .line 332
    return-void
.end method

.method public setOn()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->btnMiaoSha:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->isChecked:Z

    .line 323
    return-void
.end method

.method public setRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 302
    iput p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I

    .line 303
    return-void
.end method

.method public setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V
    .locals 0
    .parameter "sourceEntity"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 280
    return-void
.end method

.method public setTimeMillis(J)V
    .locals 0
    .parameter "timeMillis"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->timeMillis:J

    .line 55
    return-void
.end method

.method public strikethroughToString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 290
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    .local v0, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 292
    return-object v0
.end method
