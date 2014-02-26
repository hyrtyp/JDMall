.class public Lcom/unionpay/upomp/bypay/other/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/Button;

.field private final synthetic a:Landroid/widget/RelativeLayout;

.field private final synthetic b:Landroid/widget/Button;

.field private final synthetic b:Landroid/widget/RelativeLayout;

.field private final synthetic c:Landroid/widget/Button;

.field private final synthetic c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/q;->a:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/unionpay/upomp/bypay/other/q;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/unionpay/upomp/bypay/other/q;->c:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/unionpay/upomp/bypay/other/q;->a:Landroid/widget/Button;

    iput-object p5, p0, Lcom/unionpay/upomp/bypay/other/q;->b:Landroid/widget/Button;

    iput-object p6, p0, Lcom/unionpay/upomp/bypay/other/q;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->c()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(I)Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/q;->c:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_keyboard_btn1_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->b(II)V

    return-void
.end method
