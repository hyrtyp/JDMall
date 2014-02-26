.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

.field private final synthetic val$selectPaymentItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->val$selectPaymentItems:[Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->PaymentIndex:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$14(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V

    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$15(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->val$selectPaymentItems:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$15(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPaymentCodyArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$16(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    return-void
.end method
