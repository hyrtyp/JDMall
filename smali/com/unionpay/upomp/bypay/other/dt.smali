.class public Lcom/unionpay/upomp/bypay/other/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/dt;->a:Landroid/widget/EditText;

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

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()Ljava/lang/String;

    move-result-object v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/dt;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->b(II)V

    return-void
.end method
