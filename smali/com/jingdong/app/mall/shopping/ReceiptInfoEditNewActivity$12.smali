.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showCompanyTextView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

.field private final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;->val$visible:I

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$5(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$12;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 623
    return-void
.end method
