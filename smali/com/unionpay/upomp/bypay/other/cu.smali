.class Lcom/unionpay/upomp/bypay/other/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/cz;


# direct methods
.method constructor <init>(Lcom/unionpay/upomp/bypay/other/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/cu;->a:Lcom/unionpay/upomp/bypay/other/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/cu;->a:Lcom/unionpay/upomp/bypay/other/cz;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/other/cz;->a(Lcom/unionpay/upomp/bypay/other/cz;)Lcom/unionpay/upomp/bypay/activity/SplashActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/SplashActivity;->finish()V

    return-void
.end method
