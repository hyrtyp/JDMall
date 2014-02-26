.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 308
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->wareId:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$15(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$4;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$19(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v2

    .line 309
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "orderWares"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 310
    return-void
.end method
