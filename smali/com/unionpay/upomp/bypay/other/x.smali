.class public Lcom/unionpay/upomp/bypay/other/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:I

.field private final synthetic a:Landroid/view/View;

.field private final synthetic a:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/x;->a:Landroid/view/View;

    iput p2, p0, Lcom/unionpay/upomp/bypay/other/x;->a:I

    iput-object p3, p0, Lcom/unionpay/upomp/bypay/other/x;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->c()V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/x;->a:Landroid/view/View;

    iget v1, p0, Lcom/unionpay/upomp/bypay/other/x;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->b(II)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/x;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method
