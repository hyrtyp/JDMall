.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$11(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;Landroid/app/AlertDialog;)V

    .line 185
    return-void
.end method
