.class Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "product"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)Lcom/jingdong/app/mall/personel/MakeNewComments;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$3(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)Lcom/jingdong/app/mall/personel/MakeNewComments;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->setResult(ILandroid/content/Intent;)V

    .line 317
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)Lcom/jingdong/app/mall/personel/MakeNewComments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/MakeNewComments;->finish()V

    .line 319
    return-void
.end method
