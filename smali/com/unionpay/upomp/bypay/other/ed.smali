.class public Lcom/unionpay/upomp/bypay/other/ed;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ed;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/ed;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ed;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ed;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ed;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ed;->b:Ljava/lang/String;

    return-void
.end method
