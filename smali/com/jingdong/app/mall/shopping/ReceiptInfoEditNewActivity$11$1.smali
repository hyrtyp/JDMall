.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11$1;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11$1;->this$1:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11$1;->this$1:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;)Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->addRadioGroup()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    .line 548
    return-void
.end method
