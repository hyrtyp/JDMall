.class Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$duration:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$duration:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$msg:Ljava/lang/String;

    iget v2, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$1(Landroid/widget/Toast;)V

    .line 51
    :goto_0
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->access$0()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/ToastUtil$2;->val$duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
