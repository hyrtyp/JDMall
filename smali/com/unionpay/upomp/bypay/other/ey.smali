.class public Lcom/unionpay/upomp/bypay/other/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final synthetic a:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ey;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ey;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
