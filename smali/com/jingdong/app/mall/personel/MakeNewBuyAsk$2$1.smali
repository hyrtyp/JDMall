.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v1, 0x7f070373

    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->position:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$2(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;I)V

    .line 145
    packed-switch p2, :pswitch_data_0

    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PRODUCT:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$4(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PRODUCT:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$4(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_STOCK_SEND:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$7(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070375

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PAY:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$8(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070376

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_INVOICE_REPAIRE:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$9(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->choosedType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$3(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->TYPE_PROMOTION:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$10(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$5(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$6(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
