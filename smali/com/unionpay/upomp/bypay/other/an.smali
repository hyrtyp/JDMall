.class public Lcom/unionpay/upomp/bypay/other/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/unionpay/upomp/bypay/other/eh;->b:I

    sget v1, Lcom/unionpay/upomp/bypay/other/eh;->c:I

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(II)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->d:Z

    :cond_0
    return-void
.end method
