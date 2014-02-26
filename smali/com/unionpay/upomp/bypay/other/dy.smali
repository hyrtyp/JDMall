.class Lcom/unionpay/upomp/bypay/other/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/cs;


# direct methods
.method constructor <init>(Lcom/unionpay/upomp/bypay/other/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/dy;->a:Lcom/unionpay/upomp/bypay/other/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dy;->a:Lcom/unionpay/upomp/bypay/other/cs;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/cs;->a(Lcom/unionpay/upomp/bypay/other/cs;)Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_card_btn_1a"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dy;->a:Lcom/unionpay/upomp/bypay/other/cs;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/cs;->a(Lcom/unionpay/upomp/bypay/other/cs;)Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;->a(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;Ljava/lang/Boolean;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
