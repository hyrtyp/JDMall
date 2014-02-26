.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->createBookAlertDiglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

.field private final synthetic val$temp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->val$temp:Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->val$temp:Ljava/lang/String;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$12(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mBook:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$13(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->itemsBook:[Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$12(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput p2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    .line 350
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput p2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nBookSelected:I

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->setNewBook(I)V
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$14(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V

    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
