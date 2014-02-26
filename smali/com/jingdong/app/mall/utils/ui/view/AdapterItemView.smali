.class public Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;
.super Ljava/lang/Object;
.source "AdapterItemView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private line:Landroid/view/View;

.field private mContext:Lcom/jingdong/app/mall/utils/MyActivity;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "AdapterItemView"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->TAG:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 34
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    return-object v0
.end method

.method public setData(Lcom/jingdong/common/entity/JdOrderStat;)V
    .locals 6
    .parameter "orderStat"

    .prologue
    .line 43
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    if-nez v4, :cond_0

    .line 44
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "AdapterItemView"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    const v5, 0x7f0c0103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    const v5, 0x7f0c0104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->root:Landroid/view/View;

    const v5, 0x7f0c0106

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->line:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Lcom/jingdong/common/entity/JdOrderStat;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Lcom/jingdong/common/entity/JdOrderStat;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, url:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1, v3}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6
    .parameter "icon"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v1, Lcom/jingdong/common/ui/ExceptionDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 74
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 75
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 76
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 78
    const-wide/32 v1, 0x4d3f6400

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 79
    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 80
    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 126
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 127
    return-void
.end method

.method public setLineVisibility(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->line:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->line:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method
