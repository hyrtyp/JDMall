.class public Lcom/jingdong/app/mall/personel/MyWebMessage;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyWebMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;,
        Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;
    }
.end annotation


# static fields
.field private static final LOGIN_REQUEST_CODE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "MyWebMessage"


# instance fields
.field private final CONTENT_VIEW:I

.field private final TITLE_VIEW:I

.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private beforeYesterdayIndex:I

.field private dayIcon:Landroid/widget/ImageView;

.field private isFromNF:Z

.field private isLoginFail:Z

.field private it:Landroid/content/Intent;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field runnable:Ljava/lang/Runnable;

.field private todayIndex:I

.field private wareInfoList:Landroid/widget/ListView;

.field private yesterdayIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 66
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;

    .line 75
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isFromNF:Z

    .line 77
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isLoginFail:Z

    .line 80
    iput v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->TITLE_VIEW:I

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->CONTENT_VIEW:I

    .line 83
    iput v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I

    .line 84
    iput v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I

    .line 85
    iput v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I

    .line 108
    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->runnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method private InitComponenet()V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f0c03a3

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->wareInfoList:Landroid/widget/ListView;

    .line 159
    const v0, 0x7f0c03a5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->wareInfoList:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyWebMessage$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$2;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->it:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyWebMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->InitComponenet()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/personel/MyWebMessage;ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->changeAskReplyViewState(ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/personel/MyWebMessage;ILandroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/personel/MyWebMessage;->changeViewState(ILandroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/personel/MyWebMessage;Lcom/jingdong/common/entity/MessageDetail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->gotoActionActivity(Lcom/jingdong/common/entity/MessageDetail;)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/personel/MyWebMessage;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/personel/MyWebMessage;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/personel/MyWebMessage;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->wareInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyWebMessage;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyWebMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->setMyMessage()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MyWebMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/MyWebMessage;Z[Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 819
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->setFontFakeBold(Z[Landroid/widget/TextView;)V

    return-void
.end method

.method private changeAskReplyViewState(ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 4
    .parameter "linesFlag"
    .parameter "replyLayout"
    .parameter "otherLayout"
    .parameter "askContentView"
    .parameter "moreLinesView"

    .prologue
    const/16 v3, 0x14

    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 686
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 687
    invoke-virtual {p5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 696
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 691
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 692
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 693
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 694
    invoke-virtual {p5, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private changeViewState(ILandroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 2
    .parameter "linesFlag"
    .parameter "contextView"
    .parameter "moreBtn"

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x2

    .line 709
    if-ne p1, v0, :cond_0

    .line 711
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 712
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 720
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 717
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private gotoActionActivity(Lcom/jingdong/common/entity/MessageDetail;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 763
    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->isHasAction()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 770
    :sswitch_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 772
    new-instance v3, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v3}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 773
    .local v3, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v4, "to"

    invoke-virtual {v3, v4, v0}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 774
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto :goto_0

    .line 781
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #paramMap:Lcom/jingdong/common/utils/URLParamMap;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 782
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 783
    const-string v4, "orderId"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v4, "title"

    const v5, 0x7f0702e9

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v4, "com.360buy:navigationDisplayFlag"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 794
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 795
    .local v1, idL:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 796
    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    const-string v6, "messageDetail"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/MessageDetail;->getType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {p0, v1, v4, v5}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    .end local v1           #idL:Ljava/lang/Long;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 765
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x14 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private setClickListener(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "clickView"
    .parameter "listenerView"

    .prologue
    .line 729
    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;

    invoke-direct {v0, p0, p2}, Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    return-void
.end method

.method private varargs setFontFakeBold(Z[Landroid/widget/TextView;)V
    .locals 5
    .parameter "isBold"
    .parameter "views"

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 821
    .local v0, color:I
    if-eqz p1, :cond_0

    .line 822
    const/high16 v0, -0x100

    .line 824
    :cond_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 829
    return-void

    .line 824
    :cond_1
    aget-object v1, p2, v2

    .line 825
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 826
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setMyMessage()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V

    .line 267
    .local v0, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-static {p0, v0}, Lcom/jingdong/common/utils/PushMessageUtils;->getAllMessageList(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 269
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 854
    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_0

    .line 856
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isLoginFail:Z

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isLoginFail:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sput v2, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    .line 97
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->it:Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->it:Landroid/content/Intent;

    const-string v1, "isFromNF"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isFromNF:Z

    .line 100
    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;

    const v4, 0x7f03009f

    .line 101
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "content"

    aput-object v1, v5, v2

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "productImageUrl"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "productName"

    aput-object v2, v5, v1

    .line 102
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 100
    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 106
    return-void

    .line 102
    :array_0
    .array-data 0x4
        0x78t 0x3t 0xct 0x7ft
        0x75t 0x3t 0xct 0x7ft
        0x83t 0x3t 0xct 0x7ft
        0x84t 0x3t 0xct 0x7ft
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isFromNF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 837
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 838
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->finish()V

    .line 839
    const/4 v0, 0x1

    .line 842
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
    .line 138
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 143
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->isLoginFail:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 145
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->finish()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage;->runnable:Ljava/lang/Runnable;

    const/16 v2, 0x3ea

    invoke-virtual {v0, p0, v1, v2}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;I)V

    .line 152
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 134
    return-void
.end method
