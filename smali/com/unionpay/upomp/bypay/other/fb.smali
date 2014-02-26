.class public Lcom/unionpay/upomp/bypay/other/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    iput-boolean v1, v0, Lcom/unionpay/upomp/bypay/other/af;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->b:Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->m:Z

    goto :goto_0
.end method
