.class Lcom/unionpay/upomp/bypay/other/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/fi;


# direct methods
.method constructor <init>(Lcom/unionpay/upomp/bypay/other/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const-string v0, ""

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v0, v0, v1

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_debitcard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    sget v4, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sget v4, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v6}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-static {v1, v2, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v1, v1, v2

    invoke-static {v1, v5, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->S:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v0, v0, v1

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_creditcard"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/j;->a:Lcom/unionpay/upomp/bypay/other/fi;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/fi;->a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_cardunknown"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
