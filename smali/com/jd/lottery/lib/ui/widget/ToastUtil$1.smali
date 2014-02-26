.class Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$duration:I

.field private final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$resId:I

    iput p3, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$duration:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$resId:I

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$1(Landroid/widget/Toast;)V

    .line 35
    :goto_0
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 36
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 33
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$1;->val$duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
