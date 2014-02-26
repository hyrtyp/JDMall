.class Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "OrderCommodityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/OrderCommodity;

    .line 107
    .local v0, commodity:Lcom/jingdong/common/entity/OrderCommodity;
    const v7, 0x7f0c0236

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 108
    .local v4, viewLeftImage:Landroid/view/View;
    const v7, 0x7f0c0238

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 109
    .local v5, viewLeftNoStock:Landroid/view/View;
    const v7, 0x7f0c0237

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 110
    .local v6, viewLeftOtherStock:Landroid/widget/TextView;
    const v7, 0x7f0c0239

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, imageviewLeft:Landroid/widget/ImageView;
    const v7, 0x7f0c023b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, viewDesc:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getGifts()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 119
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 171
    :cond_0
    :goto_1
    :pswitch_0
    return-object v2

    .line 121
    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    const v7, 0x7f02019a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 134
    :cond_2
    :pswitch_2
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getStockStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->isNoStock()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getStockStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u73b0\u8d27"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 142
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {v0}, Lcom/jingdong/common/entity/OrderCommodity;->getStockStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :pswitch_3
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    const v7, 0x7f020199

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 158
    :pswitch_4
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const v7, 0x7f02019b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 163
    :pswitch_5
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    const v7, 0x7f020198

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
