.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

.field private final synthetic val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 929
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    if-ltz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v2

    iget v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->invalidateSelf()V

    .line 932
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setTextColor(I)V

    .line 935
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801(120)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801(120)"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    .line 940
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->invalidateSelf()V

    .line 944
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    const-string v1, "\u77ed\u4fe1\u5bc6\u7801\u8d85\u65f6,\u8bf7\u60a8\u91cd\u65b0\u83b7\u53d6\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->verificationPass:Z

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 947
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->val$drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setTextColor(I)V

    .line 948
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
