.class public Lcom/unionpay/upomp/bypay/other/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic a:Landroid/widget/Button;

.field private final synthetic a:Landroid/widget/RelativeLayout;

.field private final synthetic b:Landroid/widget/Button;

.field private final synthetic b:Landroid/widget/RelativeLayout;

.field private final synthetic c:Landroid/widget/Button;

.field private final synthetic c:Landroid/widget/RelativeLayout;

.field private final synthetic d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/widget/Button;

    iput-object p2, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/unionpay/upomp/bypay/other/t;->b:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/unionpay/upomp/bypay/other/t;->c:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/unionpay/upomp/bypay/other/t;->b:Landroid/widget/Button;

    iput-object p7, p0, Lcom/unionpay/upomp/bypay/other/t;->c:Landroid/widget/Button;

    iput-object p8, p0, Lcom/unionpay/upomp/bypay/other/t;->d:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->c()V

    sput-boolean v4, Lcom/unionpay/upomp/bypay/other/eh;->h:Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_keyboard_letter_a1"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(I)Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->c:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_keyboard_btn1_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/t;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-static {v0, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->b(II)V

    return-void
.end method
