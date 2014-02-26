.class public Lcom/unionpay/upomp/bypay/other/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/ct;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/other/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/e;->a:Lcom/unionpay/upomp/bypay/other/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v7, 0x3c

    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    rsub-int/lit8 v3, v0, 0x3c

    if-lt v0, v7, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    const-string v0, "time"

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v5, "string"

    const-string v6, "upomp_bypay_get"

    invoke-static {v4, v5, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/e;->a:Lcom/unionpay/upomp/bypay/other/ct;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/ct;->a(Lcom/unionpay/upomp/bypay/other/ct;)Lcom/unionpay/upomp/bypay/other/et;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/et;->sendMessage(Landroid/os/Message;)Z

    sput v7, Lcom/unionpay/upomp/bypay/other/eh;->v:I

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_2
    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->v:I

    const-string v4, "time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/unionpay/upomp/bypay/other/e;->a:Lcom/unionpay/upomp/bypay/other/ct;

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/other/ct;->a(Lcom/unionpay/upomp/bypay/other/ct;)Lcom/unionpay/upomp/bypay/other/et;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unionpay/upomp/bypay/other/et;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
