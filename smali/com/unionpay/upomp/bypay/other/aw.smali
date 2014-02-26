.class public Lcom/unionpay/upomp/bypay/other/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/aw;->a:Landroid/widget/Button;

    iput-object p2, p0, Lcom/unionpay/upomp/bypay/other/aw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->c()V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Z

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aw;->a:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_keyboard_letter_a2"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(II)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aw;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/aw;->a:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_keyboard_letter_a1"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
