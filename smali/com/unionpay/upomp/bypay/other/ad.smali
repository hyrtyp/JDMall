.class public Lcom/unionpay/upomp/bypay/other/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/AddCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ad;->a:Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->n:I

    move v0, v1

    :goto_0
    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    :goto_1
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()Landroid/widget/Button;

    move-result-object v0

    const-string v2, "**"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_0
    sget v2, Lcom/unionpay/upomp/bypay/other/eh;->n:I

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
