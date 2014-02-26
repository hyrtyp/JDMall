.class public Lcom/unionpay/upomp/bypay/other/ff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic a:I

.field private final synthetic a:Landroid/widget/Button;

.field private final synthetic a:Landroid/widget/EditText;

.field private final synthetic a:Landroid/widget/RelativeLayout;

.field private final synthetic a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/Button;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/Button;

    iput p2, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:I

    iput-object p3, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/Button;

    iget v2, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:I

    iget-object v3, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/EditText;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/Button;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/ff;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
