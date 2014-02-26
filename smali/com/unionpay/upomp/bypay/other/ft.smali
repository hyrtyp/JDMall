.class Lcom/unionpay/upomp/bypay/other/ft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/bg;


# direct methods
.method constructor <init>(Lcom/unionpay/upomp/bypay/other/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ft;->a:Lcom/unionpay/upomp/bypay/other/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "btn_loading_dialog"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    iput-boolean v4, v0, Lcom/unionpay/upomp/bypay/other/af;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    :cond_0
    :goto_0
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/LoginActivity;->a()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ft;->a:Lcom/unionpay/upomp/bypay/other/bg;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/bg;->dismiss()V

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Z

    if-nez v0, :cond_0

    sput-boolean v4, Lcom/unionpay/upomp/bypay/other/eh;->m:Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/RegisterActivity;->a()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "getpass1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;->a()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "getpass2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;->b()V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "editpass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/EditpassActivity;->a()V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "editinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/EditinfoActivity;->a()V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "checkcardbalance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/CheckCardBalanceActivity;->a()V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "addcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aC:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_debitcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->a()V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;->b()V

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "checkcardbalance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/CheckCardBalanceActivity;->a()V

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "payit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b()V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()V

    goto/16 :goto_1

    :cond_f
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e()V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f()V

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "cardmain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sput-boolean v4, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_updatelist"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_12
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    const-string v1, "loginauth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()V

    goto/16 :goto_1
.end method
