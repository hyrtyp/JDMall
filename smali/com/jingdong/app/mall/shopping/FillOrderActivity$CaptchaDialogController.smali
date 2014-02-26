.class public Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptchaDialogController"
.end annotation


# instance fields
.field private captchaImage:Landroid/widget/ImageView;

.field private captchaInput:Landroid/widget/EditText;

.field private captchaKey:Ljava/lang/String;

.field private final captchaUrl:Ljava/lang/String;

.field private currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private loadingDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

.field private noDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

.field private switchButton:Landroid/widget/Button;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "captchaUrl"
    .parameter "message"

    .prologue
    .line 6564
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    .line 6566
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 6568
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaUrl:Ljava/lang/String;

    .line 6570
    new-instance v0, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const-string v2, "\u52a0\u8f7d\u4e2d"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->loadingDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

    .line 6571
    new-instance v0, Lcom/jingdong/common/ui/ExceptionDrawable;

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->noDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

    .line 6573
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->findView()V

    .line 6575
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->bindImage()V

    .line 6578
    const-string v0, "\u9700\u8981\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 6581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6582
    const-string p2, "\u8bf7\u6839\u636e\u56fe\u7247\u8f93\u5165\u9a8c\u8bc1\u7801\u3002"

    .line 6584
    :cond_0
    invoke-virtual {p0, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 6587
    const-string v0, "\u63d0\u4ea4"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 6588
    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 6589
    const-string v0, "\u6362\u4e00\u5f20"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 6592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setCanBack(Z)V

    .line 6594
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->init(Landroid/content/Context;)V

    .line 6596
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 6606
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6562
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 6562
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6721
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->randomText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6552
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 6552
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Lcom/jingdong/common/ui/ExceptionDrawable;
    .locals 1
    .parameter

    .prologue
    .line 6559
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->noDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 6560
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6554
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 6554
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6555
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6556
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaInput:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 6549
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 6555
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Lcom/jingdong/common/ui/ExceptionDrawable;
    .locals 1
    .parameter

    .prologue
    .line 6558
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->loadingDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;

    return-object v0
.end method

.method private bindImage()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 6668
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$5;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 6675
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 6676
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 6677
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 6678
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 6679
    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 6714
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 6716
    return-void
.end method

.method private randomText(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 6723
    const/16 v4, 0x3e

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 6728
    .local v0, ch:[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6729
    .local v3, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 6730
    .local v2, random:Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 6734
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6731
    :cond_0
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6723
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method


# virtual methods
.method public findView()V
    .locals 2

    .prologue
    .line 6609
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 6618
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6622
    packed-switch p2, :pswitch_data_0

    .line 6657
    :goto_0
    :pswitch_0
    return-void

    .line 6624
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6625
    .local v0, captchaCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6627
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6637
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->submit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6643
    .end local v0           #captchaCode:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 6644
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 6646
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->bindImage()V

    .line 6648
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6622
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected submit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "captchaUrl"
    .parameter "message"

    .prologue
    .line 6661
    return-void
.end method
