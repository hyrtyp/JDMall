.class public Lcom/unionpay/upomp/bypay/other/ct;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/Button;

.field private a:Lcom/unionpay/upomp/bypay/other/e;

.field private a:Lcom/unionpay/upomp/bypay/other/et;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/ct;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/ct;)Lcom/unionpay/upomp/bypay/other/et;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Lcom/unionpay/upomp/bypay/other/et;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Landroid/widget/Button;

    return-void
.end method

.method public b(Landroid/widget/Button;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->h:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/ct;->a(Landroid/widget/Button;)V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/et;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/et;-><init>(Lcom/unionpay/upomp/bypay/other/ct;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Lcom/unionpay/upomp/bypay/other/et;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/e;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/e;-><init>(Lcom/unionpay/upomp/bypay/other/ct;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Lcom/unionpay/upomp/bypay/other/e;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/ct;->a:Lcom/unionpay/upomp/bypay/other/e;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
