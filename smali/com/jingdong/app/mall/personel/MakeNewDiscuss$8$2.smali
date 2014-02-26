.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->resultAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "product"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$8(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->setResult(ILandroid/content/Intent;)V

    .line 605
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->finish()V

    .line 606
    return-void
.end method
