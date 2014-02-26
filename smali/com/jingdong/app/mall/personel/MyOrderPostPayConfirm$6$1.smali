.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;

.field private final synthetic val$paymethodItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;->val$paymethodItems:[Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodIndex:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$18(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V

    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$19(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6$1;->val$paymethodItems:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    return-void
.end method
