.class public Lcom/unionpay/upomp/bypay/other/ga;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ga;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/ga;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x0

    return v0
.end method
