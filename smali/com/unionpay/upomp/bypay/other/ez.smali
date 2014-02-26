.class public Lcom/unionpay/upomp/bypay/other/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ez;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->o:I

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a()Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->q:[Ljava/lang/String;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->o:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method
