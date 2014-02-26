.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->createGeneralAlertDiglog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

.field private final synthetic val$temp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->val$temp:Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->val$temp:Ljava/lang/String;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput p2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I

    .line 359
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput p2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I

    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setNewGeneral(I)V
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->access$2(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;I)V

    .line 365
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
