.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 123
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070372

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 126
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    const v4, 0x7f070373

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 128
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    const v4, 0x7f070374

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 129
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    const v4, 0x7f070375

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 130
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    const v4, 0x7f070376

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 131
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    const v4, 0x7f070377

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    .local v1, items:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->position:I
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$1(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)I

    move-result v2

    .line 133
    new-instance v3, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;)V

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    new-instance v3, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$2;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->post(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
