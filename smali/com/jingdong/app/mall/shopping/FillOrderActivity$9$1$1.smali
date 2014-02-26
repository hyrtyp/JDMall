.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iput v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    .line 839
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noRegisterSubmitBut:Landroid/widget/Button;

    const-string v1, "\u7acb\u5373\u4e0b\u5355(\u9a8c\u8bc1\u5df2\u901a\u8fc7)"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noRegisterSubmitBut:Landroid/widget/Button;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 844
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    .line 847
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getRemark()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$12(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 848
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;

    .line 854
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 855
    return-void
.end method
