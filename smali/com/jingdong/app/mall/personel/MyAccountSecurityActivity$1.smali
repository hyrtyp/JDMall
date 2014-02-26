.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyAccountSecurityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c0351

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, descriptionView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BackExchange;

    .line 93
    .local v1, item:Lcom/jingdong/common/entity/BackExchange;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/BackExchange;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v1}, Lcom/jingdong/common/entity/BackExchange;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    if-nez p1, :cond_1

    .line 101
    const v3, 0x7f020209

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    :goto_1
    return-object v2

    .line 98
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$1;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 103
    const v3, 0x7f02020a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 105
    :cond_2
    const v3, 0x7f02020b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
