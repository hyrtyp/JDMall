.class public Lcom/unionpay/upomp/bypay/other/cy;
.super Landroid/os/Handler;


# instance fields
.field a:Landroid/content/Intent;

.field final synthetic a:Lcom/unionpay/upomp/bypay/view/MainBottom;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/view/MainBottom;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Lcom/unionpay/upomp/bypay/view/MainBottom;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    :goto_1
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    sput-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Lcom/unionpay/upomp/bypay/other/c;

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aN:Ljava/lang/String;

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AccountMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/cy;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
