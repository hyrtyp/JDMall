.class public Lcom/unionpay/upomp/bypay/other/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/s;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/s;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v2}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_pay_it_selectmm"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v0, v0, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/s;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    iget-object v3, v3, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
