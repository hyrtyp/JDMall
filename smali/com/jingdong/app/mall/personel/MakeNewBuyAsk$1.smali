.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$1;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->handleType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$1;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$1;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->chooseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 117
    return-void
.end method
