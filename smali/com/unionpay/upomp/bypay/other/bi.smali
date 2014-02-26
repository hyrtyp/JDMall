.class public Lcom/unionpay/upomp/bypay/other/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/bi;->a:Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/unionpay/upomp/bypay/other/dd;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/bi;->a:Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;

    invoke-direct {v0, v1}, Lcom/unionpay/upomp/bypay/other/dd;-><init>(Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/dd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
