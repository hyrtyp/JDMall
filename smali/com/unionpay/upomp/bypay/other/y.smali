.class public Lcom/unionpay/upomp/bypay/other/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/y;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->m:I

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method
