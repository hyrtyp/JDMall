.class public Lcom/unionpay/upomp/bypay/other/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/fi;)Lcom/unionpay/upomp/bypay/activity/PayItActivity;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_0

    sput-byte v3, Lcom/unionpay/upomp/bypay/other/eh;->c:B

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->a:I

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x2

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->q:I

    sput-boolean v3, Lcom/unionpay/upomp/bypay/other/eh;->j:Z

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pay_it_changecard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v2}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v4, "string"

    const-string v5, "upomp_bypay_pay_it_yesornopay"

    invoke-static {v3, v4, v5}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    sget v3, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sget v3, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    aget-object v2, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_affirm"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/j;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/j;-><init>(Lcom/unionpay/upomp/bypay/other/fi;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/fi;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cancel"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unionpay/upomp/bypay/other/l;

    invoke-direct {v2, p0}, Lcom/unionpay/upomp/bypay/other/l;-><init>(Lcom/unionpay/upomp/bypay/other/fi;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
