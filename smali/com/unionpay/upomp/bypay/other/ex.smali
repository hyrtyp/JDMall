.class public Lcom/unionpay/upomp/bypay/other/ex;
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
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->c:Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
