.class public Lcom/unionpay/upomp/bypay/other/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/dm;->a:Lcom/unionpay/upomp/bypay/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->l:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dm;->a:Lcom/unionpay/upomp/bypay/activity/RegisterActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/RegisterActivity;->a(Lcom/unionpay/upomp/bypay/activity/RegisterActivity;)Landroid/widget/Button;

    move-result-object v1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/util/List;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/upomp/bypay/other/eh;->l:I

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dm;->a:Lcom/unionpay/upomp/bypay/activity/RegisterActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/RegisterActivity;->a(Lcom/unionpay/upomp/bypay/activity/RegisterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dm;->a:Lcom/unionpay/upomp/bypay/activity/RegisterActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/RegisterActivity;->a(Lcom/unionpay/upomp/bypay/activity/RegisterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
