.class public Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;
.super Landroid/app/ListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_userprotocal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;->setContentView(I)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/dx;

    invoke-direct {v0, p0, p0}, Lcom/unionpay/upomp/bypay/other/dx;-><init>(Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u7528\u6237\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;->setResult(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/UserProtocalActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/dx;

    invoke-virtual {v0, p3}, Lcom/unionpay/upomp/bypay/other/dx;->a(I)V

    return-void
.end method
