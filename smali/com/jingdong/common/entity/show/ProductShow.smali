.class public Lcom/jingdong/common/entity/show/ProductShow;
.super Ljava/lang/Object;
.source "ProductShow.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4bc1054e5c79028dL


# instance fields
.field private colorSpanGray:Landroid/text/style/ForegroundColorSpan;

.field private colorSpanRed:Landroid/text/style/ForegroundColorSpan;

.field private colorSpanRedNew:Landroid/text/style/ForegroundColorSpan;

.field private context:Landroid/content/Context;

.field private product:Lcom/jingdong/common/entity/Product;

.field private resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;I)V
    .locals 2
    .parameter "context"
    .parameter "product"
    .parameter "resourceId"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/jingdong/common/entity/show/ProductShow;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRed:Landroid/text/style/ForegroundColorSpan;

    .line 63
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanGray:Landroid/text/style/ForegroundColorSpan;

    .line 64
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x35f9fa

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRedNew:Landroid/text/style/ForegroundColorSpan;

    .line 65
    iput-object p2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    .line 66
    iput p3, p0, Lcom/jingdong/common/entity/show/ProductShow;->resId:I

    .line 67
    return-void
.end method

.method public static getImageFile(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 3
    .parameter "url"
    .parameter "httpGroup"
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    .line 429
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 430
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 432
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 433
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 434
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedShareImage(Z)V

    .line 435
    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 436
    return-void
.end method

.method public static shareProduct(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 1
    .parameter "button"
    .parameter "product"
    .parameter "httpGroup"

    .prologue
    .line 306
    const-string v0, "\u5206\u4eab"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    new-instance v0, Lcom/jingdong/common/entity/show/ProductShow$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/common/entity/show/ProductShow$1;-><init>(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void
.end method

.method public static shareProductNew(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "button"
    .parameter "product"
    .parameter "httpGroup"
    .parameter "layout"

    .prologue
    .line 394
    new-instance v0, Lcom/jingdong/common/entity/show/ProductShow$2;

    invoke-direct {v0, p0}, Lcom/jingdong/common/entity/show/ProductShow$2;-><init>(Landroid/widget/Button;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    new-instance v0, Lcom/jingdong/common/entity/show/ProductShow$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/common/entity/show/ProductShow$3;-><init>(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-void
.end method


# virtual methods
.method public getImgUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/entity/Product;->popImgUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJdPrice()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, label:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getProductDetailBasicInfo()Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v2

    .line 142
    .local v2, productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    if-nez v2, :cond_0

    .line 143
    const-string v4, ""

    .line 173
    :goto_0
    return-object v4

    .line 148
    :cond_0
    iget-object v6, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getProductDetailJprice()Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v3

    .line 149
    .local v3, productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->isMiaosha()Z

    move-result v6

    if-nez v6, :cond_2

    .line 150
    if-eqz v3, :cond_1

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailPrice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/jingdong/common/res/StringUtil;->product_price_label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    .local v4, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 168
    .local v5, start:I
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 170
    .local v0, end:I
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f99999a

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    iget-object v6, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRed:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v6, v5, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 153
    .end local v0           #end:I
    .end local v4           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v5           #start:I
    :cond_1
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_jd_price:Ljava/lang/String;

    .line 155
    goto :goto_1

    .line 159
    :cond_2
    if-eqz v3, :cond_3

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailPrice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/jingdong/common/res/StringUtil;->product_price_label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_limitbuy_price:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMarketPrice()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getMarketPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getMarketPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v0, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanGray:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getMarketPriceDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    .end local v0           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMarketPriceNew()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getMarketPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getMarketPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    .local v0, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanGray:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 214
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jingdong/common/res/StringUtil;->product_original_price:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 218
    .end local v0           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMarketPriceNew(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "price"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v0, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanGray:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 230
    invoke-virtual {v0, v4, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    .end local v0           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getNameAndAdWord()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 97
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v2, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    .local v1, adWordStart:I
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 104
    .local v0, adWordEnd:I
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRedNew:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->isPromotion()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->context:Landroid/content/Context;

    iget v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->resId:I

    invoke-direct {v3, v4, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    :cond_1
    return-object v2
.end method

.method public getNameAndAdWordForPanic()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 119
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    .local v2, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, adWordStart:I
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 124
    .local v0, adWordEnd:I
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRed:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->isPromotion()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->context:Landroid/content/Context;

    iget v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->resId:I

    invoke-direct {v3, v4, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    :cond_1
    return-object v2
.end method

.method public getNameAndZeng()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v8, 0x28

    const/4 v6, 0x0

    const/16 v7, 0x21

    .line 72
    const/4 v3, 0x0

    .line 75
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, newName:Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .end local v3           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    .restart local v3       #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 84
    .end local v2           #newName:Ljava/lang/String;
    .local v1, adWordStart:I
    :goto_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 85
    .local v0, adWordEnd:I
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3, v4, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRed:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v4, v1, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->context:Landroid/content/Context;

    iget v6, p0, Lcom/jingdong/common/entity/show/ProductShow;->resId:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    return-object v3

    .line 80
    .end local v0           #adWordEnd:I
    .end local v1           #adWordStart:I
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .end local v3           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .restart local v3       #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .restart local v1       #adWordStart:I
    goto :goto_0
.end method

.method public getProduct()Lcom/jingdong/common/entity/Product;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method public getPromotionTitleAndInfo()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 242
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 244
    .local v0, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 247
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 248
    iget-object v2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getPromotionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 249
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 250
    const/16 v4, 0x21

    .line 246
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    .end local v0           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPromotionTitleAndInfoNew()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 263
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 265
    .local v0, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    iget-object v1, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPromotionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x35f9fa

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 269
    iget-object v2, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getPromotionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 270
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 271
    const/16 v4, 0x21

    .line 267
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 275
    .end local v0           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getUserClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrice()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getUserPriceLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uff1a\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/common/entity/show/ProductShow;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getUserPriceContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    .local v2, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 184
    .local v3, start:I
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 186
    .local v0, end:I
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3f99999a

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    iget-object v4, p0, Lcom/jingdong/common/entity/show/ProductShow;->colorSpanRed:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v4, v3, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    return-object v2
.end method
